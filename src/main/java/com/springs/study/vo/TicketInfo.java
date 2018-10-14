package com.springs.study.vo;

import java.util.Arrays;

import org.apache.ibatis.type.Alias;

@Alias("tkti")
public class TicketInfo {

	private Integer tkt_id;
	private String tkt_form;
	private String tkt_payment;
	private String tkt_paydate;
	private String tkt_price;
	private String tkt_userid;
	private String tkt_movid;
	private String tkt_showdate;
	private String tkt_showtime;
	private String tkt_theater;
	private String tkt_seatid;

	public TicketInfo() {
	}

	public TicketInfo(Integer tkt_id, String tkt_form, String tkt_payment, String tkt_paydate, String tkt_price,
			String tkt_userid, String tkt_movid, String tkt_showdate, String tkt_showtime, String tkt_theater,
			String tkt_seatid) {
		super();
		this.tkt_id = tkt_id;
		this.tkt_form = tkt_form;
		this.tkt_payment = tkt_payment;
		this.tkt_paydate = tkt_paydate;
		this.tkt_price = tkt_price;
		this.tkt_userid = tkt_userid;
		this.tkt_movid = tkt_movid;
		this.tkt_showdate = tkt_showdate;
		this.tkt_showtime = tkt_showtime;
		this.tkt_theater = tkt_theater;
		this.tkt_seatid = tkt_seatid;
	}

	public Integer getTkt_id() {
		return tkt_id;
	}

	public void setTkt_id(Integer tkt_id) {
		this.tkt_id = tkt_id;
	}

	public String getTkt_form() {
		return tkt_form;
	}

	public void setTkt_form(String tkt_form) {
		this.tkt_form = tkt_form;
	}

	public String getTkt_payment() {
		return tkt_payment;
	}

	public void setTkt_payment(String tkt_payment) {
		this.tkt_payment = tkt_payment;
	}

	public String getTkt_paydate() {
		return tkt_paydate;
	}

	public void setTkt_paydate(String tkt_paydate) {
		this.tkt_paydate = tkt_paydate;
	}

	public String getTkt_price() {
		return tkt_price;
	}

	public void setTkt_price(String tkt_price) {
		this.tkt_price = tkt_price;
	}

	public String getTkt_userid() {
		return tkt_userid;
	}

	public void setTkt_userid(String tkt_userid) {
		this.tkt_userid = tkt_userid;
	}

	public String getTkt_movid() {
		return tkt_movid;
	}

	public void setTkt_movid(String tkt_movid) {
		this.tkt_movid = tkt_movid;
	}

	public String getTkt_showdate() {
		return tkt_showdate;
	}

	public void setTkt_showdate(String tkt_showdate) {
		this.tkt_showdate = tkt_showdate;
	}

	public String getTkt_showtime() {
		return tkt_showtime;
	}

	public void setTkt_showtime(String tkt_showtime) {
		this.tkt_showtime = tkt_showtime;
	}

	public String getTkt_theater() {
		return tkt_theater;
	}

	public void setTkt_theater(String tkt_theater) {
		this.tkt_theater = tkt_theater;
	}

	public String getTkt_seatid() {
		return tkt_seatid;
	}

	public void setTkt_seatid(String tkt_seatid) {
		this.tkt_seatid = tkt_seatid;
	}

	@Override
	public String toString() {
		return "TicketInfo [tkt_id=" + tkt_id + ", tkt_form=" + tkt_form + ", tkt_payment=" + tkt_payment
				+ ", tkt_paydate=" + tkt_paydate + ", tkt_price=" + tkt_price + ", tkt_userid=" + tkt_userid
				+ ", tkt_movid=" + tkt_movid + ", tkt_showdate=" + tkt_showdate + ", tkt_showtime=" + tkt_showtime
				+ ", tkt_theater=" + tkt_theater + ", tkt_seatid=" + tkt_seatid + "]";
	}

}