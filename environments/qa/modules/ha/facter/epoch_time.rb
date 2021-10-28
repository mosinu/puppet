Facter.add("epoch_time") do
        setcode do
                Time.now.to_i
        end
end
