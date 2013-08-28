package com.clubmanagementsystem.app.web;
import com.clubmanagementsystem.app.domain.Item;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Item.class)
@Controller
@RequestMapping("/items")
public class ItemController {
}
