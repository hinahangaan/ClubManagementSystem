package com.clubmanagementsystem.app.domain;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Order.class, transactional = false)
public class OrderIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
