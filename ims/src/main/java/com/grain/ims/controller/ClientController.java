package com.grain.ims.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.grain.ims.common.QueryPageParam;
import com.grain.ims.common.Result;
import com.grain.ims.entity.Client;
import com.grain.ims.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/client")
public class ClientController {
    @Autowired
    private ClientService clientService;

    //新增
    @PostMapping("/save")
    public Result save(@RequestBody Client client) {
        return clientService.save(client) ? Result.suc() : Result.fail();
    }

    //更新
    @PostMapping("/update")
    public Result update(@RequestBody Client client) {
        return clientService.updateById(client) ? Result.suc() : Result.fail();
    }

    //删除
    @GetMapping("/del")
    public Result del(@RequestParam String id) {
        return clientService.removeById(id) ? Result.suc() : Result.fail();
    }

    @PostMapping("/listPage")
    public Result listPage(@RequestBody QueryPageParam query) {
        HashMap param = query.getParam();
        String name = (String) param.get("name");

        Page<Client> page = new Page();
        page.setCurrent(query.getPageNum());
        page.setSize(query.getPageSize());

        LambdaQueryWrapper<Client> lambdaQueryWrapper = new LambdaQueryWrapper();
        if (StringUtils.isNotBlank(name) && !"null".equals(name)) {
            lambdaQueryWrapper.like(Client::getName, name);
        }

        IPage result = clientService.pageCC(page, lambdaQueryWrapper);
        return Result.suc(result.getRecords(), result.getTotal());
    }

    @GetMapping("/list")
    public Result list() {
        List list = clientService.list();
        return Result.suc(list);
    }
}
