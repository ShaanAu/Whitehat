export const script = [
  { id: "BOT/greet", message: "Hello!", trigger: "BOT/intro" },
  {
    id: "BOT/intro",
    message: "Welcome to Shaans Simple Chatbot",
    trigger: "BOT/question"
  },
  {
    id: "BOT/question",
    message: "How are you today?",
    trigger: "OPTIONS/question"
  },
  {
    id: "OPTIONS/question",
    options: [
      { label: "Great! ", trigger: "BOT/celebrate" },
      { label: "Terrible :(", trigger: "BOT/sad" }
    ]
  },
  {
    id: "BOT/celebrate",
    message: "How brilliant, I am so pleased!",
    trigger: "BOT/joke"
  },
  {
    id: "BOT/sad",
    message: "Oh no, that is so upsetting",
    trigger: "BOT/joke"
  },

  {
    id: "BOT/joke",
    message: "Shall I tell you a joke?",
    trigger: "OPTIONS/joke"
  },
  {
    id: "OPTIONS/joke",
    options: [
      { label: "Yes! ", trigger: "BOT/yesjoke" },
      { label: "Please Don't", trigger: "BOT/nojoke" }
    ]
  },

  {
    id: "BOT/nojoke",
    message: "Too bad!",
    trigger: "BOT/jokereply"
  },

  {
    id: "BOT/yesjoke",
    message: "Awesome!",
    trigger: "BOT/jokereply"
  },

  {
    id: "BOT/jokereply",
    message: "Knock Knock",
    trigger: "OPTIONS/jokeanswer"
  },

  {
    id: "OPTIONS/jokeanswer",
    options: [{ label: "Who's There?", trigger: "BOT/dr" }]
  },

  {
    id: "BOT/dr",
    message: "Dr",
    trigger: "OPTIONS/drwho"
  },

  {
    id: "OPTIONS/drwho",
    options: [{ label: "Dr Who ", trigger: "BOT/youjustsaidit" }]
  },

  {
    id: "BOT/youjustsaidit",
    message: "You Just said it :)",
    trigger: "OPTIONS/response"
  },

  {
    id: "OPTIONS/response",
    options: [
      { label: "Awesome Joke! ", trigger: "BOT/awesomeend" },
      { label: "Lame", trigger: "BOT/lameend" }
    ]
  },

  {
    id: "BOT/lameend",
    message: "You clearly have poor taste in jokes",
    trigger: "BOT/end"
  },

  {
    id: "BOT/awesomeend",
    message: "Thank You!",
    trigger: "BOT/end"
  },

  {
    id: "BOT/end",
    message: "I now must amuse the next human, have a good rest of the day!"
  }
];
