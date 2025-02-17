package com.grain.ims.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.grain.ims.entity.Goodstype;
import com.grain.ims.mapper.GoodstypeMapper;
import com.grain.ims.service.GoodstypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class GoodstypeServiceImpl extends ServiceImpl<GoodstypeMapper, Goodstype> implements GoodstypeService {

    @Resource
    private GoodstypeMapper goodstypeMapper;

    @Override
    public IPage pageCC(IPage<Goodstype> page, Wrapper wrapper) {
        return goodstypeMapper.pageCC(page,wrapper);
    }
}
