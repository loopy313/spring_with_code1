package org.zerock.test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

import java.util.List;

import javax.inject.Inject;

import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.persistence.BoardDAO;
import org.zerock.service.BoardService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class ListPageTest {
	@Inject
	BoardService service;
	@Inject
	BoardDAO dao;
	
	@After
	public void tearDown() throws Exception {
	}

//	@Test
//	public void test() throws Exception {
//		assertNotNull(service.listPage(1));
//		List<BoardVO> li=service.listPage(1);
//		assertThat(service.listPage(1).get(3).getBno(), is(4));
//	}
	@Test
	public void listCreteriaTest() throws Exception{
		Criteria cri=new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(20);
		assertNotNull(dao.listCriteria(cri));
		assertThat(dao.listCriteria(cri).get(0).getBno(), is(40));
	}

}
