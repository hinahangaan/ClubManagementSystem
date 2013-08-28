package com.clubmanagementsystem.app.web;
import com.clubmanagementsystem.app.domain.Order;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Order.class)
@Controller
@RequestMapping("/orders")
public class OrderController {
}
