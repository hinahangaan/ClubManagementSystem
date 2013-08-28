package com.clubmanagementsystem.app.web;
import com.clubmanagementsystem.app.domain.Table;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Table.class)
@Controller
@RequestMapping("/tables")
public class TableController {
}
