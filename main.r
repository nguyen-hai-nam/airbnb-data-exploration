setwd("path/to/your/directory")

data <- read.csv('Airbnb.csv')
# subset_data <- data[, c("longitude", "latitude", "room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count", "availability_365")]
# numeric_data <- data[sapply(data, is.numeric)]

lower_bound <- quantile(data$price, 0.10)
upper_bound <- quantile(data$price, 0.90)
filtered_data <- data[data$price > lower_bound & data$price < upper_bound, ]

# summary(data$price)
# summary(filtered_data$price)


# boxplot(data$price, filtered_data$price, names=c("Original", "Filtered"), main="Boxplot of Prices", ylab="Price", col=c("blue", "red"))
# boxplot(filtered_data$price, main="Boxplot of Prices", ylab="Price", col="blue")

# pairs(numeric_data, pch=20, col="blue", cex=0.05)


# model <- lm(price ~ price ~ neighbourhood_group + latitude + longitude + room_type + minimum_nights + number_of_reviews + reviews_per_month + calculated_host_listings_count + availability_365, data = filtered_data)
# summary(model)
# plot(minimum_nights, price, pch=20, col="blue", cex=0.5)
# abline(h=0, col="red")