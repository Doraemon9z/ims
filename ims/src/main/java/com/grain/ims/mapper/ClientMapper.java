package com.grain.ims.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.grain.ims.entity.Client;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ClientMapper extends BaseMapper<Client> {
    IPage pageCC(IPage<Client> page, @Param(Constants.WRAPPER) Wrapper wrapper);

}
