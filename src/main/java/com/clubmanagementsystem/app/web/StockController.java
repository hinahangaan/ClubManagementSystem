package com.clubmanagementsystem.app.web;
import com.clubmanagementsystem.app.domain.Stock;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Stock.class)
@Controller
@RequestMapping("/stocks")
public class StockController {
}
