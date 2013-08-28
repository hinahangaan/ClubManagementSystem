package com.clubmanagementsystem.app.domain;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Customer.class, transactional = false)
public class CustomerIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
