require 'matrix'

t1 = Matrix[[0.27, 0.73, 0   , 0   ],
            [0   , 0   , 0.54, 0.46],
            [0   , 0   , 0.46, 0.54],
            [0.73, 0.27, 0   , 0   ]]

i = Matrix[[0,0,1,0]]

puts("Inicio do jogo, ou após defender sem recarregar")

10.times do |t|
	t1et = t1**t
	puts i*t1et
end

puts "Chance de acertar alguém"

10.times do |t|
	t1et = t1**t
	v = i*t1et
	puts "v = #{0.54*(v[0,1])}"
end

puts("Após atirar")
i = Matrix[[1,0,0,0]]
10.times do |t|
	t1et = t1**t
	puts i*t1et
end
