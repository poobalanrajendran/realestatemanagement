package com.chainsys.realestatemanagement.businesslogic;

import java.time.LocalDate;

public class Logic {
	public static LocalDate getInstanceDate() {
        return java.time.LocalDate.now();
    }
}
