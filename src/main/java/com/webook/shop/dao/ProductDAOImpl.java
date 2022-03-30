package com.webook.shop.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webook.shop.domain.ProductVO;

@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate session;
	


	@Override
	public void productSearch(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void productChangeEn(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void productChangeKo(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProductVO> productList(ProductVO vo) {
		// TODO Auto-generated method stub
		return null;
	}



	
		/*@Override
		public List<ProductVO> productList(ProductVO vo) {

			RowBounds row = new RowBounds(6*(page-1),6);
			List<ProductVO> list = session.selectList(", vo, row);



			return null;
		}
*/

		
	}

	

	

