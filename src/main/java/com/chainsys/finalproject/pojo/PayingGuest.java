package com.chainsys.finalproject.pojo;

import java.util.Date;

public class PayingGuest {

	
			private	int pg_id ;
			private int owner_id;
			private int	pg_location;
			private long pg_phoneno ;
			private	String pg_address ;
			private double	pg_rent ;
			private	String pg_foodfacility ;
			private	String pg_AC_nonAC ;
			private	String pg_image ;
			private	String pg_status ;
			private Date dates;
			
			public int getPg_id() {
				return pg_id;
			}
			public void setPg_id(int pg_id) {
				this.pg_id = pg_id;
			}
			public int getOwner_id() {
				return owner_id;
			}
			public void setOwner_id(int owner_id) {
				this.owner_id = owner_id;
			}
			public int getPg_location() {
				return pg_location;
			}
			public void setPg_location(int pg_location) {
				this.pg_location = pg_location;
			}
			public int getPg_phoneno() {
				return pg_phoneno;
			}
			public void setPg_phoneno(int pg_phoneno) {
				this.pg_phoneno = pg_phoneno;
			}
			public String getPg_address() {
				return pg_address;
			}
			public void setPg_address(String pg_address) {
				this.pg_address = pg_address;
			}
			public int getPg_rent() {
				return pg_rent;
			}
			public void setPg_rent(int pg_rent) {
				this.pg_rent = pg_rent;
			}
			public String getPg_foodfacility() {
				return pg_foodfacility;
			}
			public void setPg_foodfacility(String pg_foodfacility) {
				this.pg_foodfacility = pg_foodfacility;
			}
			public String getPg_AC_nonAC() {
				return pg_AC_nonAC;
			}
			public void setPg_AC_nonAC(String pg_AC_nonAC) {
				this.pg_AC_nonAC = pg_AC_nonAC;
			}
			public String getPg_image() {
				return pg_image;
			}
			public void setPg_image(String pg_image) {
				this.pg_image = pg_image;
			}
			public String getPg_status() {
				return pg_status;
			}
			public void setPg_status(String pg_status) {
				this.pg_status = pg_status;
			}
			public Date getDates() {
				return dates;
			}
			public void setDates(Date dates) {
				this.dates = dates;
			}
			
}
