package org.reservation;

public class ReservationDto {
	private int no;
	private String name;
	private String jumin;
	private String symptoms  ;
	private String date ;
	private String time ;

	public ReservationDto() {
		this(0,"","","","","");
	}
	public ReservationDto(int no) {
		this(0,"","","","","");
	}
	
	public ReservationDto(int no, String name, String jumin, String symptoms , String date, String time ) {
		this.no=no;
		this.name =name;
		this.jumin = jumin;
		this.symptoms=symptoms;
		this.date=date;
		this.time=time;
	}
	public ReservationDto(String name, String jumin, String symptoms , String date, String time ) {
		this.name =name;
		this.jumin = jumin;
		this.symptoms=symptoms;
		this.date=date;
		this.time=time;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJumin() {
		return jumin;
	}
	public void setJumin(String jumin) {
		this.jumin = jumin;
	}
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
