CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `REMOTEUSER`@`%` 
    SQL SECURITY DEFINER
VIEW `db01`.`otp` AS
    SELECT 
        `db01`.`token`.`SerialNo` AS `SerialNo`,
        `db01`.`token`.`Email` AS `Email`,
        `db01`.`token`.`OTP` AS `OTP`,
        `db01`.`token`.`GeneratedTime` AS `GeneratedTime`
    FROM
        `db01`.`token`
    WHERE
        `db01`.`token`.`GeneratedTime` > CURRENT_TIMESTAMP() - INTERVAL 10 MINUTE