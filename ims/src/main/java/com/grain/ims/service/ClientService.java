package com.grain.ims.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.grain.ims.entity.Client;


public interface ClientService extends IService<Client> {
    IPage pageCC(IPage<Client> page, Wrapper wrapper);
}
