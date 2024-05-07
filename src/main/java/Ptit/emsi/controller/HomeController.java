package Ptit.emsi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import Ptit.emsi.global.GlobalData;
import Ptit.emsi.service.CategoryService;
import Ptit.emsi.service.ProductService;

@Controller
public class HomeController {
 
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;
	
	@GetMapping({"/","/home"})
	public String home(Model  model, @Param("keyword") String keyword) {
		model.addAttribute("categories",categoryService.getAllCategory());
		model.addAttribute("cartCount",GlobalData.cart.size());
		model.addAttribute("products",productService.getAllProduct(keyword));
		return "shop";
	}
	
	@GetMapping("/shop")
	public String shop(Model model, @Param("keyword") String keyword) {
		model.addAttribute("categories",categoryService.getAllCategory());
		model.addAttribute("cartCount",GlobalData.cart.size());
		model.addAttribute("products",productService.getAllProduct(keyword));
		return "shop";
	}
	@GetMapping("/shop/category/{id}")
	public String shopByCategory(Model model , @PathVariable int id) {
		model.addAttribute("categories",categoryService.getAllCategory());
		model.addAttribute("cartCount",GlobalData.cart.size());
		model.addAttribute("products",productService.getAllProductsByCategoryId(id));
		return "shop";
		
	}
	
	@GetMapping("/shop/viewproduct/{id}")
	public String viewProduct(Model model , @PathVariable int id) {
		model.addAttribute("product",productService.getProductById(id).get());
		model.addAttribute("cartCount",GlobalData.cart.size());
		return "viewProduct";
		
	}
	
	
}
