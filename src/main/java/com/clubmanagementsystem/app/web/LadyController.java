package com.clubmanagementsystem.app.web;
import com.clubmanagementsystem.app.domain.Lady;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Lady.class)
@Controller
@RequestMapping("/ladys")
public class LadyController {
}
