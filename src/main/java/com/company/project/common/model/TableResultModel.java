package com.company.project.common.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Viki.Feng on 15/02/2016.
 */
public class TableResultModel<T> extends CommonResultModel {
    private String sEcho;
    private long iTotalRecords;
    private long iTotalDisplayRecords;
    private List<T> aaData;

    public TableResultModel(){
        sEcho = "";
        iTotalRecords = 0;
        iTotalDisplayRecords = 0;
        aaData = new ArrayList<T>();
    }

    public String getsEcho() {
        return sEcho;
    }

    public void setsEcho(String sEcho) {
        this.sEcho = sEcho;
    }

    public long getiTotalRecords() {
        return iTotalRecords;
    }

    public void setiTotalRecords(long iTotalRecords) {
        this.iTotalRecords = iTotalRecords;
    }

    public long getiTotalDisplayRecords() {
        return iTotalDisplayRecords;
    }

    public void setiTotalDisplayRecords(long iTotalDisplayRecords) {
        this.iTotalDisplayRecords = iTotalDisplayRecords;
    }

    public List<T> getAaData() {
        return aaData;
    }

    public void setAaData(List<T> aaData) {
        this.aaData = aaData;
    }
}
