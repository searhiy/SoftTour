package com.softserveinc.softtour.dao;

import com.softserveinc.softtour.entity.HistoryRecord;
import com.softserveinc.softtour.entity.Tour;
import com.softserveinc.softtour.entity.User;

import java.sql.Date;
import java.awt.List;

public interface HistoryRecordsDAO {
    public void save(Date date, User user, Tour tour);
    public void update(long id, Date date, User user, Tour id);
    public void delete(long id);
    public HistoryRecord findById(long id);
    public List<HistoryRecord> findByTour(Tour tour);
    public List<HistoryRecord> findByDate(Date date);
    public List<HistoryRecord> getAll();
}
