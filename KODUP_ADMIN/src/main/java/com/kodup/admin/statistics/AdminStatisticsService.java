package com.kodup.admin.statistics;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class AdminStatisticsService {
	@Autowired
	PlatformTransactionManager manager;
	TransactionStatus status;
}
