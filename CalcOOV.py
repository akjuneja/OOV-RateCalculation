from typing import List 

def calc_oov_rate(train:List, test:List):
    train_dict = {}
    for token in train:
        if token in train_dict:
            train_dict[token] = train_dict[token] + 1
        else:
            train_dict[token] = 1

    #sorting the dictionary
    train_dict = dict(sorted(train_dict.items(), key = lambda item: item[1], reverse =True))
    
    train_set = list(train_dict.keys())  
    unseen_tokens = []
    for token in test:
        if token not in train_set:
            unseen_tokens.append(token)
     
    oov_rate = len(unseen_tokens)/len(test)
    return oov_rate
