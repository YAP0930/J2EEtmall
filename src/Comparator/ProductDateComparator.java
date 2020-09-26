package Comparator;

import java.util.Comparator;

import bean.Product;

/*
 *  新品比较器
 *  把 创建日期晚的放前面
 */
public class ProductDateComparator implements Comparator<Product>{

	@Override
	public int compare(Product p1, Product p2) {
		// TODO Auto-generated method stub
		return p1.getCreateDate().compareTo(p2.getCreateDate());
	}

}
