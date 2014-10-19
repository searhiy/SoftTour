package com.softserveinc.softtour.util;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

import org.springframework.stereotype.Service;

@Service
public class CreatorTrainUrl {

	/**
	 * Creates the url with specified parameters
	 * 
	 * @param departureCity
	 * @param arrivalCity
	 * @param departureDate
	 * @return
	 */
	public String createUrl(String departureCity, String arrivalCity,
			String departureDate) {
		StringBuilder baseUrl = new StringBuilder("http://ticket.turistua.com/ua/train/reservation/?transport=train");

		String url = baseUrl.append("&dt=").append(departureDate)
							.append("&src=").append(getCityCode(departureCity))
							.append("&dst=").append(getCityCode(arrivalCity))
							.toString();
		return url;
	}

	private String getCityCode(String city) {
		Properties properties = new Properties();
		FileReader fileReader = null;
		BufferedReader bufferedReader = null;

		try {
			// FIXME change url for testing src/main/resources
			fileReader = new FileReader("/parser_properties/train_parser.properties");
			bufferedReader = new BufferedReader(fileReader);
			properties.load(bufferedReader);

			return properties.getProperty(city);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (fileReader != null) {
					fileReader.close();
				}
				if (bufferedReader != null) {
					bufferedReader.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

}