package com.example.be.service.Impl;

import com.example.be.entity.Essentials;
import com.example.be.repository.BaseRepository;
import com.example.be.service.EssentialsService;
import com.example.be.util.Utils;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service
@Log4j2
public class EssentialsServiceImpl extends BaseServiceImpl<Essentials> implements EssentialsService {
    public EssentialsServiceImpl(BaseRepository<Essentials, Long> baseRepo, Utils utils) {
        super(baseRepo, utils);
    }

}
