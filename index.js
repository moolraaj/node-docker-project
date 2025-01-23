
const express =require('express')
const dotenv=require('dotenv')
const cors=require('cors')
const app=express()
dotenv.config({
    path:'./.env'
})
const PORT=process.env.PORT


app.use(express.json())
app.use(cors()) 

app.get('/api',(req,resp)=>{
    resp.send(`<h1>i learn docker form sanjeev</h1>`)
})


app.listen(PORT,()=>{
    console.log(`app is running on the port ${PORT}`)
})