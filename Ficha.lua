

os.execute("chcp 65001")
os.execute("clear")

-- Criatura
local MonstroName = "CREEPER"
local MonstroDescricao = "Um monstro furtivo com um temperamento EXPLOSIVO!"
local emoji = "🧨"
local Som = "Tsssssssss"
local TempoDeAparicao = "Noturno"
local Loot = "Polvóra"



-- Atributos
local AtaqueAtributo = 10
local DefesaAtributo = 2
local VidaAtributo = 5
local VelocidadeAtributo = 7
local InteligenciaAtributo = 2

-- Função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function BarraDeStatus(atributo)
      local QuadradoCheio = "▰"
      local QuadradoVazio = "▱"
      local resultado = ""
      for i = 1, 10, 1 do
        -- Quadrado Cheio
        if i <= atributo then
            resultado = resultado .. QuadradoCheio
                        
        else    
            --Quadrado Vazio
            resultado = resultado .. QuadradoVazio
        end
      end

      return resultado
end

-- Ficha
print("==================================================================")
print("| Nome: " .. MonstroName)
print("| Descrição: " .. MonstroDescricao)
print("|")
print("| Emoji Favorito: " .. emoji)
print("| Som:" .. Som )
print("| Horário:" .. TempoDeAparicao )
print("| Item:" ..Loot)
print("|")
print("| Atributos")
print("|     Ataque:       " ..BarraDeStatus(AtaqueAtributo))
print("|     Defesa:       " ..BarraDeStatus(DefesaAtributo))
print("|     Vida:         " ..BarraDeStatus(VidaAtributo))
print("|     Inteligencia: " ..BarraDeStatus(InteligenciaAtributo))
print("|     Velocidade:   " ..BarraDeStatus(VelocidadeAtributo))
print("|")
print("==================================================================")