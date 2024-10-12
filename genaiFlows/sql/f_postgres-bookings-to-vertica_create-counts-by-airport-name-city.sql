drop table bookings.counts_by_airport_name_city;

create table bookings.counts_by_airport_name_city as select count(1) as count,
                                                            ad.airport_name,
                                                            ad.city,
                                                            f.actual_arrival
                                                     from bookings.flights f inner join bookings.airports_data ad on f.arrival_airport=ad.airport_code
                                                     group by city,airport_name,actual_arrival order by count;