package com.oss.api.repository.factory;

import org.springframework.stereotype.Component;

import com.oss.api.repository.MessageRepository;
import com.oss.api.repository.SurveyOptionRepository;
import com.oss.api.repository.SurveyRepository;
import com.oss.api.repository.UserRepository;
import com.oss.api.repository.VoteRepository;
import com.oss.api.repository.VoteValueRepository;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class FactoryRepositoryImpl implements FactoryRepository {
    private final SurveyOptionRepository surveyOptionRepository;
    private final UserRepository userRepository;
    private final VoteRepository voteRepository;
    private final SurveyRepository surveyRepository;
    private final MessageRepository messageRepository;
    private final VoteValueRepository voteValueRepository;

    @Override
    public SurveyOptionRepository getSurveyOptionRepository() {
        return surveyOptionRepository;
    }

    @Override
    public UserRepository getUserRepository() {
        return userRepository;
    }

    @Override
    public VoteRepository getVoteRepository() {
        return voteRepository;
    }

    @Override
    public SurveyRepository getSurveyRepository() {
        return surveyRepository;
    }

    @Override
    public MessageRepository getMessageRepository() {
        return messageRepository;
    }

    @Override
    public VoteValueRepository getVoteValueRepository() {
        return voteValueRepository;
    }
}
