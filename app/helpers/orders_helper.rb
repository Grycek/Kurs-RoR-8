module OrdersHelper
    def cart_value(cart)
        return cart.reduce(0) do | acc,prod|
            acc + prod.value
        end
    end
end
