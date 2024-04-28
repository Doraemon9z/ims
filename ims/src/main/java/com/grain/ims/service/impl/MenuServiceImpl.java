package com.grain.ims.service.impl;

import com.grain.ims.entity.Menu;
import com.grain.ims.mapper.MenuMapper;
import com.grain.ims.service.MenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;


@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {

}
