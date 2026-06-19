-- Add missing indexes for foreign key columns that are frequently queried
-- This migration addresses the performance audit finding H-5

-- Chat threads: frequently filtered by user_id
CREATE INDEX IF NOT EXISTS idx_chat_thread_user_id ON chat_thread (user_id);

-- Chat messages: frequently filtered by thread_id
CREATE INDEX IF NOT EXISTS idx_chat_message_thread_id ON chat_message (thread_id);

-- Agents: frequently filtered by user_id
CREATE INDEX IF NOT EXISTS idx_agent_user_id ON agent (user_id);

-- Sessions: frequently looked up by user_id
CREATE INDEX IF NOT EXISTS idx_session_user_id ON session (user_id);

-- Accounts: frequently looked up by user_id
CREATE INDEX IF NOT EXISTS idx_account_user_id ON account (user_id);

-- Workflows: frequently filtered by user_id
CREATE INDEX IF NOT EXISTS idx_workflow_user_id ON workflow (user_id);

-- MCP servers: frequently filtered by user_id
CREATE INDEX IF NOT EXISTS idx_mcp_server_user_id ON mcp_server (user_id);

-- Archives: frequently filtered by user_id
CREATE INDEX IF NOT EXISTS idx_archive_user_id ON archive (user_id);

-- Chat exports: frequently filtered by exporter_id
CREATE INDEX IF NOT EXISTS idx_chat_export_exporter_id ON chat_export (exporter_id);

-- Chat export comments: frequently filtered by export_id
CREATE INDEX IF NOT EXISTS idx_chat_export_comment_export_id ON chat_export_comment (export_id);