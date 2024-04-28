package com.grain.ims.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.grain.ims.entity.Record;



public interface RecordService extends IService<Record> {

    IPage pageCC(IPage<Record> page, Wrapper wrapper);
}
