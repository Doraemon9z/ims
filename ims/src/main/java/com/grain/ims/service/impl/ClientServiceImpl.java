package com.grain.ims.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.grain.ims.entity.Client;
import com.grain.ims.mapper.ClientMapper;
import com.grain.ims.service.ClientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ClientServiceImpl extends ServiceImpl<ClientMapper, Client> implements ClientService {
    @Resource
    private ClientMapper clientMapper;

    @Override
    public IPage pageCC(IPage<Client> page, Wrapper wrapper) {
        return clientMapper.pageCC(page,wrapper);
    }
}
