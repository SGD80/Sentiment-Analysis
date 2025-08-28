# 📚 Sentiment Analysis of *The Monkey’s Paw* by W. W. Jacobs

This project uses R to perform sentiment analysis on the classic short story *The Monkey’s Paw* by W. W. Jacobs, sourced from [AmericanLiterature.com](https://americanliterature.com). The analysis involves text tokenization, lexicon-based sentiment scoring, and data visualization using the `tidytext`, `syuzhet`, and `NRC` sentiment lexicons.

---

## 🧾 Overview

### 🔍 Objective

- Extract and analyze the emotional content of *The Monkey’s Paw* using multiple sentiment analysis methods.
- Understand the emotional arc of the story through tokenization, lexicon matching, and visual insights.

---

## 🧰 Tools and Libraries

This project was built using R and the following packages:

- `rvest` – Web scraping the story content  
- `tidyverse` – Data wrangling and visualization  
- `tidytext` – Tokenizing and processing text  
- `syuzhet` – Sentiment analysis using Syuzhet and NRC lexicons  
- `textdata` – Access to sentiment lexicons  

---

## ⚙️ Workflow

### 1. **Data Collection**
- Scraped the short story *The Monkey’s Paw* from [AmericanLiterature.com](https://americanliterature.com/author/w-w-jacobs/short-story/the-monkeys-paw/) using `rvest`.

### 2. **Text Tokenization**
- Tokenized the story into individual words using `unnest_tokens()` from the `tidytext` package.

### 3. **Sentiment Analysis**
- **Bing Lexicon:** Classified words as *positive* or *negative* and computed overall sentiment score.
- **Syuzhet Method:** Calculated narrative sentiment flow using the `syuzhet` algorithm.
- **NRC Lexicon:** Mapped words to eight emotions (*anger, joy, fear,* etc.) plus *positive* and *negative* categories.

### 4. **Visualization**
- Generated a bar chart of the NRC emotion categories to understand the emotional distribution throughout the story.

---

## 📊 Output

- `sentiment_summary`: Count of positive vs. negative words (Bing lexicon)
- `text_data`: Tokenized text with attached sentiment scores
- `nrc_sentiments`: Frequency of words associated with different emotions
- **Plot:** Emotion distribution chart using NRC lexicon

---

## 📈 Example Plot

> _Sentiment Distribution in Text Data_  
A bar chart visualizing the count of words associated with each emotion category from the NRC sentiment lexicon.

---

## 📚 Credits

**Text Source:**  
[AmericanLiterature.com – *The Monkey’s Paw*](https://americanliterature.com/author/w-w-jacobs/short-story/the-monkeys-paw/)

**Lexicons Used:**
- [Bing Liu Opinion Lexicon](https://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html)
- [Syuzhet Package](https://github.com/mjockers/syuzhet)
- [NRC Emotion Lexicon](https://saifmohammad.com/WebPages/NRC-Emotion-Lexicon.htm)

---

## 📜 License

This project is for educational and research purposes only.  
The story is in the public domain.  
All code is released under the [MIT License](https://opensource.org/licenses/MIT).

---

## 👤 Author

**Scott Dunn**  
R Programmer | Data Enthusiast
📫 [LinkedIn] https://www.linkedin.com/in/scott-dunn-a5936b23/

