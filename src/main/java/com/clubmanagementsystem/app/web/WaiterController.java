package com.clubmanagementsystem.app.web;
import com.clubmanagementsystem.app.domain.Waiter;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Waiter.class)
@Controller
@RequestMapping("/waiters")
public class WaiterController {
}
