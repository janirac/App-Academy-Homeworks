import { moves } from "./data"
import PokeMoveCard from "./PokeMoveCard";

function PokeMoves(){
    return (
        <div>
            <h1>PokeMoves</h1>
            <ul>
                {
                moves.map(element => (
                    <PokeMoveCard key={element.id} {...element}/>
                    // <li key={element.id}>
                    //     {element.id}.{element.move} 
                    // </li>
                ))}
            </ul>
        </div>
    )
}

export default PokeMoves;
// why do we need to add javascript to element.id and item.id