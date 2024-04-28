package com.grain.ims.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.grain.ims.entity.Goods;
import com.grain.ims.mapper.GoodsMapper;
import com.grain.ims.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class GoodsServiceImpl extends ServiceImpl<GoodsMapper, Goods> implements GoodsService {

    @Resource
    private GoodsMapper goodsMapper;

    @Override
    public IPage pageCC(IPage<Goods> page, Wrapper wrapper) {
        return goodsMapper.pageCC(page, wrapper);
    }
}
