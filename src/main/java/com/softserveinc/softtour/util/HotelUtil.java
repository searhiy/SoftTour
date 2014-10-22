package com.softserveinc.softtour.util;

import com.softserveinc.softtour.entity.*;
import com.softserveinc.softtour.service.FeedbackService;
import com.softserveinc.softtour.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.math.RoundingMode;

@Component
public class HotelUtil {
private static final BigDecimal NUMBER_OF_RATING_CATEGORIES = BigDecimal.valueOf(4);

    @Autowired
    private HotelService hotelService;

    public Hotel updateHotelRate(Long hotelId, BigDecimal cleanliness, BigDecimal comfort,
                                 BigDecimal location, BigDecimal valueForMoney) {

        Hotel hotel = hotelService.findOne(hotelId);

        Integer numOfFeedbacks = hotel.getFeedbackNum();

        BigDecimal rating = comfort.add(cleanliness).add(location).add(valueForMoney).divide(NUMBER_OF_RATING_CATEGORIES, 2, RoundingMode.HALF_UP);

        BigDecimal newComfort = calculateRate(hotel.getComfort(), comfort, numOfFeedbacks);
        BigDecimal newCleanliness = calculateRate(hotel.getCleanliness(), cleanliness, numOfFeedbacks);
        BigDecimal newLocation = calculateRate(hotel.getLocation(), location, numOfFeedbacks);
        BigDecimal newValueForMoney = calculateRate(hotel.getValueForMoney(), valueForMoney, numOfFeedbacks);
        BigDecimal newRating = calculateRate(hotel.getRating(), rating, numOfFeedbacks);

        hotel.setRating(newRating);
        hotel.setValueForMoney(newValueForMoney);
        hotel.setLocation(newLocation);
        hotel.setComfort(newComfort);
        hotel.setCleanliness(newCleanliness);
        hotel.setFeedbackNum(++numOfFeedbacks);

        hotelService.save(hotel);

        return hotel;
    }

    private BigDecimal calculateRate(BigDecimal oldValue, BigDecimal newValue, Integer numOfFeedbacks) {

        BigDecimal oldRate = oldValue.multiply(toBigDecimal(numOfFeedbacks));

        return (oldRate.add(newValue)).divide(toBigDecimal(++numOfFeedbacks), 2, RoundingMode.HALF_UP);
    }

    private BigDecimal toBigDecimal(Integer value) {
        return BigDecimal.valueOf(value);
    }
}
