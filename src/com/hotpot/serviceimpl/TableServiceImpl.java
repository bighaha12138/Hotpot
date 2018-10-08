package com.hotpot.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hotpot.dao.TableDao;
import com.hotpot.model.Table;
import com.hotpot.service.TableService;

@Service("tableService")
public class TableServiceImpl implements TableService {
	
	@Autowired
	@Qualifier("tableDao")
	private TableDao tableDao;

	@Override
	public List<Table> getAllTables(int start,int end) {
		return tableDao.getAllTables(start,end);
	}

	@Override
	public Integer allTableCount() {
		return tableDao.allTableCount();
	}

	@Override
	public Boolean changeStatusToUsing(Integer id) {
		boolean result = false;
		if (tableDao.changeStatusToUsing(id)!=null) {
			result = true;
		}
		return result;
	}



}
