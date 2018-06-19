package com.newtouch.blog.entity;

import java.io.Serializable;
import java.util.Date;

public class AccessLog implements Serializable {
    private String id;

    private String landip;

    private Date landdate;

    private String accesspage;

    private String country;

    private String province;

    private String city;

    private String rectangle;

    private String operation;

    private String accountnum;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getLandip() {
        return landip;
    }

    public void setLandip(String landip) {
        this.landip = landip == null ? null : landip.trim();
    }

    public Date getLanddate() {
        return landdate;
    }

    public void setLanddate(Date landdate) {
        this.landdate = landdate;
    }

    public String getAccesspage() {
        return accesspage;
    }

    public void setAccesspage(String accesspage) {
        this.accesspage = accesspage == null ? null : accesspage.trim();
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getRectangle() {
        return rectangle;
    }

    public void setRectangle(String rectangle) {
        this.rectangle = rectangle == null ? null : rectangle.trim();
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation == null ? null : operation.trim();
    }

    public String getAccountnum() {
        return accountnum;
    }

    public void setAccountnum(String accountnum) {
        this.accountnum = accountnum == null ? null : accountnum.trim();
    }
}