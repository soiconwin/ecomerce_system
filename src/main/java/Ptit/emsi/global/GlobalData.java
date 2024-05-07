package Ptit.emsi.global;

import java.util.ArrayList;
import java.util.List;

import Ptit.emsi.model.Product;

public class GlobalData {

	public static List<Product> cart;
	static {
		cart = new ArrayList<Product>();
	}
}
