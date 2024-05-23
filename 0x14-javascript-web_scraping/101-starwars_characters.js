#!/usr/bin/node

const request = require('request');
const movieId = process.argv[2];
const apiUrl = `https://swapi-api.hbtn.io/api/films/${movieId}/`;

request(apiUrl, (error, response, body) => {
  if (error) {
    console.log(error);
    return;
  }
  const data = JSON.parse(body);
  const characters = data.characters;

  characters.forEach((character) => {
    request(character, (charError, charResponse, charBody) => {
      if (charError) {
        console.log(charError);
        return;
      }
      const charData = JSON.parse(charBody);
      console.log(charData.name);
    });
  });
});
