package com.mvc.dto;

public class CompanyDTO {

	private String comp_name;
	private String comp_faddress;
	private String comp_saddress;
	private String comp_field;
	private String comp_cost;
	private String comp_proccess;
	private String comp_age;
	private String comp_subaddress;
	private int resist_idx;
	private String comp_phone;
	private String user_id;
	private String comp_num;
			
	public String getComp_name() {
		return comp_name;
	}
	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}
	public String getComp_faddress() {
		return comp_faddress;
	}
	public void setComp_faddress(String comp_faddress) {
		this.comp_faddress = comp_faddress;
	}
	public String getComp_saddress() {
		return comp_saddress;
	}
	public void setComp_saddress(String comp_saddress) {
		this.comp_saddress = comp_saddress;
	}
	public String getComp_field() {
		return comp_field;
	}
	public void setComp_field(String comp_field) {
		this.comp_field = comp_field;
	}
	public String getComp_cost() {
		return comp_cost;
	}
	public void setComp_cost(String comp_cost) {
		this.comp_cost = comp_cost;
	}
	public String getComp_proccess() {
		return comp_proccess;
	}
	public void setComp_proccess(String comp_proccess) {
		this.comp_proccess = comp_proccess;
	}
	public String getComp_age() {
		return comp_age;
	}
	public void setComp_age(String comp_age) {
		this.comp_age = comp_age;
	}
	public String getComp_subaddress() {
		return comp_subaddress;
	}
	public void setComp_subaddress(String comp_subaddress) {
		this.comp_subaddress = comp_subaddress;
	}
	public int getResist_idx() {
		return resist_idx;
	}
	public void setResist_idx(int resist_idx) {
		this.resist_idx = resist_idx;
	}
	public String getComp_phone() {
		return comp_phone;
	}
	public void setComp_phone(String comp_phone) {
		this.comp_phone = comp_phone;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getComp_num() {
		return comp_num;
	}
	public void setComp_num(String comp_num) {
		this.comp_num = comp_num;
	}
	
	@Override
	public String toString() {
		return "CompanyDTO [comp_name=" + comp_name + ", comp_faddress=" + comp_faddress + ", comp_saddress="
				+ comp_saddress + ", comp_field=" + comp_field + ", comp_cost=" + comp_cost + ", comp_proccess="
				+ comp_proccess + ", comp_age=" + comp_age + ", comp_subaddress=" + comp_subaddress + ", resist_idx="
				+ resist_idx + ", comp_phone=" + comp_phone + ", user_id=" + user_id + ", comp_num=" + comp_num + "]";
	}
}