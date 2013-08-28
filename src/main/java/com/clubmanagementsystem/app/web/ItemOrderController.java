package com.clubmanagementsystem.app.web;
import com.clubmanagementsystem.app.domain.ItemOrder;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = ItemOrder.class)
@Controller
@RequestMapping("/itemorders")
public class ItemOrderController {
}
