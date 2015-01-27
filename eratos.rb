class Eratos
	def self.all_prime(val)
		# 初めの一覧を取得
		arr = Array.new
		for num in 2..val do
			arr.push(num)
		end
		# 素数リストに最初の「２」を代入
		target = 2
		p_arr = Array.new
		while target <= Math.sqrt(val).truncate do
			p_arr.push(target)
			itr = 0
			# 対象の数字で割り切れる数を除外
			while itr < arr.size do
				if (arr[itr] % target) == 0 then
					arr.delete_at(itr)
				else
					itr+=1
				end
			end
			# 一覧に残っている最初の数を素数リストに追加
			target = arr.first
		end
		# 一覧に残っている数を素数リストに追加
		p_arr += arr
		p_arr
	end
end

p Eratos.all_prime(ARGV[0].to_i)
