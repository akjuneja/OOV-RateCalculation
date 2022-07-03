from typing import List
import re

def preprocess(text):

    text = text.lower()   # Lowercasing
    #tokens = re.sub("^\d+\s|\s\d+\s|\s\d+$", "", text)     # Removing numbers
    tokens = re.sub(r'[0-9]', '', text)
    tokens = re.sub('[^\w\s\n]', "", tokens) #re.sub('[^a-zA-Z0-9\n\.]', ' ', tokens) #re.sub('[^\w\s\n\.!?]', '', tokens)   # Removing the punctuations, special char
    #tokens = re.sub('\s+', " ", tokens) # Removing white spaces
    #tokens = tokens.split(' ')     # Tokenising
 
    return tokens

def preprocess_ben(text):

    line_breaker = 0
    tokens = ""
    for char in text:
        tokens += char
        if char == "!":
            line_breaker += 1
            if line_breaker >= 2:
                line_breaker = 0
                tokens += '\n'

    tokens = tokens.lower()   # Lowercasing
    #tokens = re.sub("^\d+\s|\s\d+\s|\s\d+$", "", tokens)     # Removing numbers
    tokens = re.sub(r'[0-9]', '', tokens)
    tokens = re.sub('[^\w\s\n]', "", tokens) #re.sub('[^a-zA-Z0-9\n\.]', ' ', tokens) #re.sub('[^\w\s\n\.!?]', '', tokens)   # Removing the punctuations, special char

    #tokens = re.sub('\s+', " ", tokens) # Removing white spaces
    #tokens = tokens.split(' ')     # Tokenising
 
    return tokens
