// const express = require('express');
import express from 'express';
import mySql from 'mysql';
import cors from 'cors'

const app = express();
app.use(cors());
app.use(express.json());


const db = mySql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    datebase: 'quizgame',
})

app.listen(8081, ()=>{
    console.log("Connected to the server");
})