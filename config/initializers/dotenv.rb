# The application will not boot if any of these keys are missing from the relevant .env files.
Dotenv.require_keys("REDIS_URL")