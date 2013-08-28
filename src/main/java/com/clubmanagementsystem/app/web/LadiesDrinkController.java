package com.clubmanagementsystem.app.web;
import com.clubmanagementsystem.app.domain.LadiesDrink;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = LadiesDrink.class)
@Controller
@RequestMapping("/ladiesdrinks")
public class LadiesDrinkController {
}
