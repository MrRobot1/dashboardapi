package com.hiq.dashboardapi;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/companies")
public class CompanyController {

    @Value("${parameterSecret}")
    private String parameterSecret;

    @GetMapping("/{id}")
    public String getCompany(@PathVariable Long id) {
        return "HiQ Syd AB!!: " + parameterSecret;
    }
}