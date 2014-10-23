package com.softserveinc.softtour.entity;

import javax.persistence.*;

@Entity
@Table(name = "Region")
public class Region {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @Column(name = "name", nullable = false, length = 45)
    private String name;

    @Column(name = "itTourId", nullable = true, length = 20)
    private Long itTourId;

    @ManyToOne
    @JoinColumn(name = "country_id", nullable = false)
    private Country country;

    public Region() {
    }

    public Region(String name, Country country) {
        this.country = country;
        this.name = name;
    }

    public Region(String name, Long itTourId, Country country) {
        this.name = name;
        this.itTourId = itTourId;
        this.country = country;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public Long getItTourId() {
        return itTourId;
    }

    public void setItTourId(Long itTourId) {
        this.itTourId = itTourId;
    }

    @Override
    public String toString() {
        return "Region{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", country=" + country +
                '}';
    }
}
