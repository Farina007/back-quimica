import postgres from 'postgres'

const sql = postgres('postgres://postgres:123@localhost:5432/QIB', { rejectUnauthorized: false }
)

// const ImageSchema = new postgres.Schema({
//     name: String,
//     url: String,
//     createdAt: {
//       type: Date,
//       default: Date.now,
//     },
//   });

//export default ImageSchema
export default sql