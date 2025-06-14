package com.oss.api.services.VoteValue;

import java.util.List;

import org.springframework.stereotype.Component;

import com.oss.api.dto.VoteValueDto;
import com.oss.api.models.Vote;
import com.oss.api.models.VoteValue;
import com.oss.api.services.modelMapperable;

@Component
public interface VoteValueService extends modelMapperable<VoteValue, VoteValueDto> {
    List<VoteValue> findByVote(Vote vote);

    void save(VoteValue voteValue);

    void deleteByVote(Vote vote);
}