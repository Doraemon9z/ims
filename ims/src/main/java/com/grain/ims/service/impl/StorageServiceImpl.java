package com.grain.ims.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.grain.ims.entity.Storage;
import com.grain.ims.mapper.StorageMapper;
import com.grain.ims.service.StorageService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class StorageServiceImpl extends ServiceImpl<StorageMapper, Storage> implements StorageService {

    @Resource
    private StorageMapper storageMapper;

    @Override
    public IPage pageCC(IPage<Storage> page, Wrapper wrapper) {
        return storageMapper.pageCC(page, wrapper);
    }
}
