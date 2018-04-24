def ppap(word_ary,correct_ary,success_str)
    lists = []
    count = 0
    while true do
        word = word_ary.sample
        print word
        print '|'
        lists << word
        if lists.length > correct_ary.length then
            count = count + 1
            candidate = lists.last(correct_ary.length)
            if candidate == correct_ary then
                puts success_str
                puts '(' + count.to_s + '試行目)'
                break
            end
        end
    end
    
end

word_ary = [
    'pen',
    'apple',
    'pineapple'
    ]
    
correct_ary = [
    'pen',
    'pineapple',
    'apple',
    'pen'
    ]

success_str = 'ペンぱいなっぽーあっぽーぺん'

ppap(word_ary,correct_ary,success_str)