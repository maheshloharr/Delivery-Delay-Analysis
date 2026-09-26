CREATE DATABASE exam;

USE exam;

DROP TABLE IF EXISTS deliveries;
DROP TABLE IF EXISTS route;

-- Route Table
CREATE TABLE route (
    route_id VARCHAR(10) PRIMARY KEY,
    route VARCHAR(20) NOT NULL,
    service_type VARCHAR(50)
);

INSERT INTO route (route_id, route, service_type)
VALUES
('R1', 'Metro Link', 'Express'),
('R2', 'City Dash', 'Express'),
('R3', 'Highway Freight', 'Standard'),
('R4', 'Rural Feeder', 'Standard');


-- Deliveries Table
CREATE TABLE deliveries (
    record_id INT PRIMARY KEY,
    month VARCHAR(10),
    route_id VARCHAR(10),
    hub VARCHAR(20) NOT NULL,
    promised_days INT,
    actual_days INT,
    FOREIGN KEY (route_id) REFERENCES route(route_id)
);


INSERT INTO deliveries
(record_id, month, route_id, hub, promised_days, actual_days)
VALUES
(1, 'Jan', 'R1', 'Mumbai', 2, 2),
(2, 'Jan', 'R2', 'Chennai', 3, 4),
(3, 'Jan', 'R3', 'Delhi', 5, 8),
(4, 'Jan', 'R4', 'Mumbai', 6, 10),
(5, 'Feb', 'R1', 'Chennai', 2, 5),
(6, 'Feb', 'R2', 'Delhi', 3, 3),
(7, 'Feb', 'R3', 'Delhi', 5, 10),
(8, 'Feb', 'R4', 'Chennai', 6, 7),
(9, 'Mar', 'R1', 'Delhi', 2, 8),
(10, 'Mar', 'R2', 'Mumbai', 3, 5),
(11, 'Mar', 'R3', 'Chennai', 5, 5),
(12, 'Mar', 'R4', 'Mumbai', 6, 15);

select * from deliveries;

select * from route;

-- S2a

select
    r.service_type,
    sum(
        case
            when d.actual_days - d.promised_days > 0
            then d.actual_days - d.promised_days
            else 0
        end
    ) as total_delay_days
from deliveries as d
join route as r
    on d.route_id = r.route_id
group by r.service_type
order by total_delay_days desc;

-- S2b

select
    r.route,
    SUM(
        case
            when d.actual_days - d.promised_days > 0
            then d.actual_days - d.promised_days
            else 0
        end
    ) as total_delay_days
from deliveries as d
join route as r
    on d.route_id = r.route_id
group by r.route
having total_delay_days > 8
order by total_delay_days desc;


-- S2C
select
    d.hub,
    sum(
        case
            when d.actual_days - d.promised_days > 0
            then d.actual_days - d.promised_days
            else 0
        end
    ) as total_delay_days
from deliveries as d
group by d.hub
order by total_delay_days desc, d.hub asc
limit 2;


select
    count(*) as unmatched_count
from deliveries as d
left join route as r
    on d.route_id = r.route_id
where r.route_id is null;